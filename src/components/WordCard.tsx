// 单词卡：点击翻面（正面：单词/音标/发音；背面：释义/例句）。
// 翻转用 RN 原生 Animated（rotateY + 双面交叉淡入淡出）。

import { useEffect, useRef } from "react";
import {
  Animated,
  Pressable,
  StyleSheet,
  Text,
  View,
  type GestureResponderEvent,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import type { Word } from "@/types/database";

// 懒加载 expo-speech（仅在需要时加载）
let Speech: typeof import("expo-speech") | null = null;
const loadSpeech = async () => {
  if (!Speech) {
    Speech = await import("expo-speech");
  }
  return Speech;
};

interface Props {
  word: Word;
  flipped: boolean;
  onFlip: () => void;
}

export function WordCard({ word, flipped, onFlip }: Props) {
  const anim = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    Animated.timing(anim, {
      toValue: flipped ? 1 : 0,
      duration: 600,
      useNativeDriver: true,
    }).start();
  }, [flipped, anim]);

  const frontRotate = anim.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "180deg"] });
  const backRotate = anim.interpolate({ inputRange: [0, 1], outputRange: ["180deg", "360deg"] });
  const frontOpacity = anim.interpolate({ inputRange: [0, 0.45, 0.55, 1], outputRange: [1, 1, 0, 0] });
  const backOpacity = anim.interpolate({ inputRange: [0, 0.45, 0.55, 1], outputRange: [0, 0, 1, 1] });

  const speak = async (e: GestureResponderEvent) => {
    e.stopPropagation();
    try {
      const speechModule = await loadSpeech();
      speechModule.stop();
      speechModule.speak(word.spelling, { language: "en-US", rate: 0.9 });
    } catch {
      // 部分平台可能不支持 TTS
    }
  };

  return (
    <Pressable style={styles.wrap} onPress={onFlip}>
      {/* 正面 */}
      <Animated.View
        style={[
          styles.face,
          { transform: [{ rotateY: frontRotate }], opacity: frontOpacity },
        ] as any}
      >
        <View style={styles.frontTopDeco} />
        <Text style={styles.word}>{word.spelling}</Text>
        <Text style={styles.phonetic}>{word.phonetic}</Text>
        <Pressable style={styles.speakBtn} onPress={speak} hitSlop={10}>
          <Ionicons name="volume-high" size={22} color={Colors.primary} />
        </Pressable>
        <View style={styles.hintRow}>
          <Ionicons name="hand-left-outline" size={12} color={Colors.textHint} />
          <Text style={styles.hint}>点击翻面查看释义</Text>
        </View>
      </Animated.View>

      {/* 背面 */}
      <Animated.View
        style={[
          styles.face,
          styles.back,
          { transform: [{ rotateY: backRotate }], opacity: backOpacity },
        ] as any}
      >
        <View style={styles.backTopDeco} />
        <View style={styles.defsContainer}>
          {word.definitions.map((d, i) => (
            <View key={i} style={styles.defRow}>
              <View style={styles.defHeader}>
                <View style={styles.posBadge}>
                  <Text style={styles.pos}>{d.pos}</Text>
                </View>
                <Text style={styles.meaning}>{d.meaning}</Text>
              </View>
              {d.example ? <Text style={styles.example}>"{d.example}"</Text> : null}
              {d.translation ? <Text style={styles.translation}>{d.translation}</Text> : null}
            </View>
          ))}
        </View>
        <View style={styles.hintRow}>
          <Ionicons name="checkmark-circle-outline" size={12} color={Colors.textHint} />
          <Text style={styles.hint}>选择下方按钮评分</Text>
        </View>
      </Animated.View>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  wrap: {
    height: 380,
    width: "100%",
  },
  face: {
    position: "absolute",
    left: 0,
    right: 0,
    top: 0,
    bottom: 0,
    alignItems: "center",
    justifyContent: "center",
    borderRadius: Radius.xl,
    padding: Spacing.xxl,
    backfaceVisibility: "hidden",
    backgroundColor: Colors.surface,
    overflow: "hidden",
    ...Shadow.lifted,
  },
  back: {
    backgroundColor: Colors.surfaceAlt,
  },

  // Decorations
  frontTopDeco: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
    height: 4,
    backgroundColor: Colors.primary,
    borderTopLeftRadius: Radius.xl,
    borderTopRightRadius: Radius.xl,
  },
  backTopDeco: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
    height: 4,
    backgroundColor: Colors.success,
    borderTopLeftRadius: Radius.xl,
    borderTopRightRadius: Radius.xl,
  },

  // Front
  word: {
    fontSize: 40,
    fontWeight: "800",
    color: Colors.text,
    letterSpacing: -0.5,
  },
  phonetic: {
    ...Typography.phonetic,
    marginTop: Spacing.sm,
    fontStyle: "italic",
  },
  speakBtn: {
    marginTop: Spacing.xl,
    width: 52,
    height: 52,
    borderRadius: 26,
    backgroundColor: Colors.primaryBg,
    alignItems: "center",
    justifyContent: "center",
  },

  // Back
  defsContainer: {
    width: "100%",
    flex: 1,
    justifyContent: "center",
  },
  defRow: {
    marginBottom: Spacing.lg,
    width: "100%",
  },
  defHeader: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: Spacing.xs,
    gap: Spacing.sm,
  },
  posBadge: {
    backgroundColor: Colors.primaryBg,
    borderRadius: Radius.sm,
    paddingHorizontal: Spacing.sm,
    paddingVertical: Spacing.xs,
  },
  pos: {
    ...Typography.label,
    color: Colors.primary,
    fontWeight: "700",
  },
  meaning: {
    fontSize: 20,
    fontWeight: "700",
    color: Colors.text,
    flexShrink: 1,
  },
  example: {
    ...Typography.caption,
    color: Colors.textSecondary,
    fontStyle: "italic",
    marginTop: Spacing.xs,
    lineHeight: 21,
  },
  translation: {
    ...Typography.label,
    color: Colors.textMuted,
    marginTop: Spacing.xs,
  },

  // Hint
  hintRow: {
    position: "absolute",
    bottom: Spacing.xl,
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.xs,
  },
  hint: {
    ...Typography.label,
    color: Colors.textHint,
  },
});
