// Tab 栏布局 - Claymorphism 风格
// 选中态：图标 + 文字在一个圆润胶囊中

import { Redirect, Tabs } from "expo-router";
import { Ionicons } from "@expo/vector-icons";
import { StyleSheet, View, Text } from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useAuth } from "@/lib/auth";
import { isSupabaseConfigured } from "@/lib/supabase";
import { Colors, Radius, Spacing } from "@/constants/theme";

export default function TabsLayout() {
  const { user, loading } = useAuth();
  const insets = useSafeAreaInsets();

  if (loading) return null;
  if (isSupabaseConfigured && !user) return <Redirect href="/login" />;

  const bottomPadding = Math.max(insets.bottom + 4, 16);

  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        tabBarActiveTintColor: Colors.primary,
        tabBarInactiveTintColor: Colors.textMuted,
        tabBarStyle: [
          styles.tabBar,
          {
            paddingBottom: bottomPadding,
            height: 64 + bottomPadding,
          },
        ],
        tabBarLabelStyle: styles.tabLabel,
        tabBarIconStyle: styles.tabIconStyle,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          title: "学习",
          tabBarIcon: ({ color, size, focused }) => (
            <View style={[styles.tabIconWrap, focused && styles.tabIconActive]}>
              <Ionicons
                name={focused ? "book" : "book-outline"}
                color={focused ? Colors.white : color}
                size={22}
              />
            </View>
          ),
        }}
      />
      <Tabs.Screen
        name="stats"
        options={{
          title: "统计",
          tabBarIcon: ({ color, size, focused }) => (
            <View style={[styles.tabIconWrap, focused && styles.tabIconActive]}>
              <Ionicons
                name={focused ? "stats-chart" : "stats-chart-outline"}
                color={focused ? Colors.white : color}
                size={22}
              />
            </View>
          ),
        }}
      />
      <Tabs.Screen
        name="profile"
        options={{
          title: "我的",
          tabBarIcon: ({ color, size, focused }) => (
            <View style={[styles.tabIconWrap, focused && styles.tabIconActive]}>
              <Ionicons
                name={focused ? "person" : "person-outline"}
                color={focused ? Colors.white : color}
                size={22}
              />
            </View>
          ),
        }}
      />
    </Tabs>
  );
}

const styles = StyleSheet.create({
  tabBar: {
    backgroundColor: Colors.surface,
    elevation: 8,
    shadowColor: Colors.text,
    shadowOpacity: 0.06,
    shadowRadius: 12,
    shadowOffset: { width: 0, height: -2 },
    // Claymorphism: thin top border
    borderTopWidth: 1,
    borderTopColor: Colors.border,
  },
  tabLabel: {
    fontSize: 11,
    fontWeight: "600",
    marginTop: 4,
  },
  tabIconStyle: {
    // Gap between icon and label
    marginBottom: -2,
  },
  tabIconWrap: {
    width: 44,
    height: 28,
    borderRadius: 14,
    alignItems: "center",
    justifyContent: "center",
  },
  tabIconActive: {
    backgroundColor: Colors.primary,
    width: 56,
    height: 32,
    borderRadius: 16,
    // Claymorphism: thick border on active tab
    borderWidth: 1,
    borderColor: Colors.primary,
  },
});
