# 词记 WordNest Design System

> Claymorphism style for primary/secondary school vocabulary learning app

## Style: Claymorphism

**Keywords:** Soft 3D, chunky, playful, toy-like, bubbly, thick borders (3-4px), double shadows, rounded (16-24px)

**Best For:** Educational apps, children's apps, fun-focused onboarding

**Mode:** Light only (dark mode not recommended for this audience)

**Avoid:** Dark modes, complex jargon

## Colors

| Role | Hex | Token |
|------|-----|-------|
| Primary | `#4F46E5` | `Colors.primary` |
| On Primary | `#FFFFFF` | `Colors.white` |
| Secondary | `#818CF8` | `Colors.primaryLight` |
| Accent/CTA | `#EA580C` | `Colors.orange` |
| Background | `#EEF2FF` | `Colors.background` |
| Foreground | `#1E1B4B` | `Colors.text` |
| Card | `#FFFFFF` | `Colors.surface` |
| Muted | `#EBEEF8` | `Colors.surfaceAlt` |
| Border | `#C7D2FE` | `Colors.border` |
| Destructive | `#DC2626` | `Colors.danger` |

### Extended Palette (implemented)

| Role | Hex | Token |
|------|-----|-------|
| Primary Blue | `#5B8DEF` | `Colors.primary` |
| Coral Pink | `#FF7088` | `Colors.accent` |
| Star Gold | `#FFBE42` | `Colors.gold` |
| Lively Green | `#36D9A0` | `Colors.success` |
| Lavender | `#9B72F2` | `Colors.purple` |
| Orange | `#FF9F43` | `Colors.orange` |
| Sky Blue | `#43C6F5` | `Colors.sky` |
| Cherry Pink | `#FF6B9D` | `Colors.pink` |

## Typography

- **Heading:** Baloo 2 (playful, rounded)
- **Body:** Comic Neue (friendly, readable)
- **Mood:** kids, education, playful, friendly, colorful, learning

## Key Effects

- Inner+outer shadows (subtle, no hard lines)
- Soft press (200ms ease-out)
- Fluffy elements
- Smooth transitions
- Gradient buttons and decorative elements
- Thick borders (3-4px) for playful feel

## Gradients

| Name | Colors | Usage |
|------|--------|-------|
| primary | `#5B8DEF → #4361EE` | Main CTAs, headers |
| sunset | `#FF9F43 → #FF7088` | Warm accents |
| ocean | `#43C6F5 → #5B8DEF` | Cool accents |
| forest | `#36D9A0 → #2DD4A8` | Success states |
| purple | `#9B72F2 → #7C5CE0` | Special highlights |
| warm | `#FFBE42 → #FF9F43` | Gold/warm elements |

## Spacing Scale

4/8/16/24/32/40/56/64 (4pt base)

## Border Radius

8/12/16/20/28/32/999 (pill)

## Shadows

| Name | Usage | Elevation |
|------|-------|-----------|
| soft | Cards at rest | 1 |
| card | Cards with content | 3 |
| button | Interactive elements | 4 |
| lifted | Prominent cards | 6 |

## React Native Stack Guidelines

- Use `Pressable` (not TouchableOpacity) for all touch interactions
- Set `hitSlop` for small targets (icon buttons, close buttons)
- Add `accessibilityLabel` to all interactive elements
- Use `accessibilityRole="button"` for pressable elements
- Respect safe areas with `useSafeAreaInsets()`
- 8dp spacing rhythm throughout

## Pre-Delivery Checklist

- [ ] No emojis as structural icons
- [ ] All icons from consistent family (Ionicons)
- [ ] Pressed-state visuals do not shift layout bounds
- [ ] Semantic theme tokens used consistently
- [ ] All tappable elements provide clear pressed feedback
- [ ] Touch targets >=44x44pt
- [ ] Disabled states are visually clear
- [ ] Primary text contrast >=4.5:1
- [ ] Safe areas respected
- [ ] Scroll content not hidden behind fixed bars
