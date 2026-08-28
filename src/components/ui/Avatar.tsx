// 用户头像组件 - 青春活力风格
import React from "react";
import { View, Text, StyleSheet, Image } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Radius } from "@/constants/theme";

interface AvatarProps {
  name?: string;
  imageUrl?: string;
  size?: number;
}

export default function Avatar({ name, imageUrl, size = 56 }: AvatarProps) {
  const borderRadius = size / 2;
  const fontSize = size * 0.4;

  if (imageUrl) {
    return (
      <View style={[styles.container, { width: size, height: size, borderRadius }]}>
        <Image
          source={{ uri: imageUrl }}
          style={[styles.image, { width: size, height: size, borderRadius }]}
        />
      </View>
    );
  }

  const initials = name ? name.charAt(0).toUpperCase() : "?";

  return (
    <View
      style={[styles.container, { backgroundColor: Colors.primary, width: size, height: size, borderRadius }]}
    >
      {name ? (
        <Text style={[styles.initials, { fontSize }]}>{initials}</Text>
      ) : (
        <Ionicons name="person" size={fontSize} color={Colors.white} />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    alignItems: "center",
    justifyContent: "center",
    overflow: "hidden",
  },
  image: {
    resizeMode: "cover",
  },
  initials: {
    color: Colors.white,
    fontWeight: "700",
  },
});
