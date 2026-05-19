#!/bin/bash
# SuperAI Complete Build Setup Script
# Run this script in the root of your repository

set -e

echo "🚀 SuperAI Build Setup Starting..."

# Create directories
mkdir -p app/src/main/res/values
mkdir -p app/src/main/res/values-night
mkdir -p app/src/main/res/drawable
mkdir -p app/src/main/res/mipmap-anydpi-v26
mkdir -p app/src/main/res/xml
mkdir -p app/src/main/java/com/superai/app/ui/theme
mkdir -p .github/workflows
mkdir -p app/schemas

echo "✅ Directories created"

# gradle.properties
cat > gradle.properties << 'EOF'
android.useAndroidX=true
org.gradle.jvmargs=-Xmx2048m
kotlin.code.style=official
ksp.incremental=true
androidx.compose.compiler.enableStrongSkippingMode=true
EOF
echo "✅ gradle.properties"

# strings.xml
cat > app/src/main/res/values/strings.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">SuperAI</string>
    <string name="app_description">Native Android Kotlin/Compose Superagent</string>
</resources>
EOF
echo "✅ strings.xml"

# colors.xml
cat > app/src/main/res/values/colors.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <color name="seed">#6200EE</color>
    <color name="md_theme_light_primary">#6200EE</color>
    <color name="md_theme_light_onPrimary">#FFFFFF</color>
    <color name="md_theme_light_primaryContainer">#EADDFF</color>
    <color name="md_theme_light_onPrimaryContainer">#21005E</color>
    <color name="md_theme_light_secondary">#03DAC6</color>
    <color name="md_theme_light_onSecondary">#000000</color>
    <color name="md_theme_light_secondaryContainer">#B2F5EA</color>
    <color name="md_theme_light_onSecondaryContainer">#001F1B</color>
    <color name="md_theme_light_tertiary">#03DAC6</color>
    <color name="md_theme_light_onTertiary">#000000</color>
    <color name="md_theme_light_tertiaryContainer">#B2F5EA</color>
    <color name="md_theme_light_onTertiaryContainer">#001F1B</color>
    <color name="md_theme_light_error">#CF6679</color>
    <color name="md_theme_light_onError">#FFFFFF</color>
    <color name="md_theme_light_errorContainer">#F9DEDC</color>
    <color name="md_theme_light_onErrorContainer">#410E0B</color>
    <color name="md_theme_light_outline">#79747E</color>
    <color name="md_theme_light_background">#FFFBFE</color>
    <color name="md_theme_light_onBackground">#1C1B1F</color>
    <color name="md_theme_light_surface">#FFFBFE</color>
    <color name="md_theme_light_onSurface">#1C1B1F</color>
    <color name="md_theme_dark_primary">#BB86FC</color>
    <color name="md_theme_dark_onPrimary">#370B1E</color>
    <color name="md_theme_dark_primaryContainer">#4A0E4E</color>
    <color name="md_theme_dark_onPrimaryContainer">#EADDFF</color>
    <color name="md_theme_dark_secondary">#03DAC6</color>
    <color name="md_theme_dark_onSecondary">#000000</color>
    <color name="md_theme_dark_secondaryContainer">#005047</color>
    <color name="md_theme_dark_onSecondaryContainer">#B2F5EA</color>
    <color name="md_theme_dark_tertiary">#03DAC6</color>
    <color name="md_theme_dark_onTertiary">#000000</color>
    <color name="md_theme_dark_tertiaryContainer">#005047</color>
    <color name="md_theme_dark_onTertiaryContainer">#B2F5EA</color>
    <color name="md_theme_dark_error">#F2B8B5</color>
    <color name="md_theme_dark_onError">#601410</color>
    <color name="md_theme_dark_errorContainer">#8C1D18</color>
    <color name="md_theme_dark_onErrorContainer">#F9DEDC</color>
    <color name="md_theme_dark_outline">#998C97</color>
    <color name="md_theme_dark_background">#1C1B1F</color>
    <color name="md_theme_dark_onBackground">#E6E1E6</color>
    <color name="md_theme_dark_surface">#1C1B1F</color>
    <color name="md_theme_dark_onSurface">#E6E1E6</color>
</resources>
EOF
echo "✅ colors.xml"

# themes.xml (light)
cat > app/src/main/res/values/themes.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <style name="Theme.SuperAI" parent="android:Theme.Material.Light">
        <item name="android:colorPrimary">@color/md_theme_light_primary</item>
        <item name="android:colorSecondary">@color/md_theme_light_secondary</item>
        <item name="android:colorTertiary">@color/md_theme_light_tertiary</item>
        <item name="android:colorBackground">@color/md_theme_light_background</item>
        <item name="android:colorSurface">@color/md_theme_light_surface</item>
    </style>

    <style name="Theme.SuperAI.SplashScreen" parent="Theme.SuperAI">
        <item name="android:windowFullscreen">true</item>
    </style>
</resources>
EOF
echo "✅ themes.xml (light)"

# themes.xml (night)
cat > app/src/main/res/values-night/themes.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <style name="Theme.SuperAI" parent="android:Theme.Material">
        <item name="android:colorPrimary">@color/md_theme_dark_primary</item>
        <item name="android:colorSecondary">@color/md_theme_dark_secondary</item>
        <item name="android:colorTertiary">@color/md_theme_dark_tertiary</item>
        <item name="android:colorBackground">@color/md_theme_dark_background</item>
        <item name="android:colorSurface">@color/md_theme_dark_surface</item>
    </style>

    <style name="Theme.SuperAI.SplashScreen" parent="Theme.SuperAI">
        <item name="android:windowFullscreen">true</item>
    </style>
</resources>
EOF
echo "✅ themes.xml (dark)"

# ic_launcher_background.xml
cat > app/src/main/res/drawable/ic_launcher_background.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="108dp"
    android:height="108dp"
    android:viewportWidth="108"
    android:viewportHeight="108">
    <path
        android:fillColor="#3DDC84"
        android:pathData="M0,0h108v108h-108z" />
</vector>
EOF
echo "✅ ic_launcher_background.xml"

# ic_launcher_foreground.xml
cat > app/src/main/res/drawable/ic_launcher_foreground.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="108dp"
    android:height="108dp"
    android:viewportWidth="108"
    android:viewportHeight="108">
    <path
        android:fillColor="#000000"
        android:pathData="M54,9C31.91,9 14,26.91 14,49s17.91,40 40,40 40,-17.91 40,-40 -17.91,-40 -40,-40zm0,4c19.88,0 36,16.12 36,36s-16.12,36 -36,36 -36,-16.12 -36,-36 16.12,-36 36,-36z" />
</vector>
EOF
echo "✅ ic_launcher_foreground.xml"

# ic_launcher.xml
cat > app/src/main/res/mipmap-anydpi-v26/ic_launcher.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@drawable/ic_launcher_background" />
    <foreground android:drawable="@drawable/ic_launcher_foreground" />
</adaptive-icon>
EOF
echo "✅ ic_launcher.xml"

# ic_launcher_round.xml
cat > app/src/main/res/mipmap-anydpi-v26/ic_launcher_round.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@drawable/ic_launcher_background" />
    <foreground android:drawable="@drawable/ic_launcher_foreground" />
</adaptive-icon>
EOF
echo "✅ ic_launcher_round.xml"

# backup_rules.xml
cat > app/src/main/res/xml/backup_rules.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<full-backup-content>
    <include domain="sharedpref" path="." />
    <include domain="database" path="." />
    <include domain="file" path="." />
</full-backup-content>
EOF
echo "✅ backup_rules.xml"

# data_extraction_rules.xml
cat > app/src/main/res/xml/data_extraction_rules.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<data-extraction-rules>
    <cloud-backup>
        <include domain="sharedpref" path="." />
        <include domain="database" path="." />
        <include domain="file" path="." />
    </cloud-backup>
</data-extraction-rules>
EOF
echo "✅ data_extraction_rules.xml"

# file_provider_paths.xml
cat > app/src/main/res/xml/file_provider_paths.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<paths xmlns:android="http://schemas.android.com/apk/res/android">
    <cache-path name="cache" path="/" />
    <external-files-path name="external_files" path="/" />
    <external-cache-path name="external_cache" path="/" />
</paths>
EOF
echo "✅ file_provider_paths.xml"

# SuperAIApplication.kt
cat > app/src/main/java/com/superai/app/SuperAIApplication.kt << 'EOF'
package com.superai.app

import android.app.Application
import dagger.hilt.android.HiltAndroidApp
import timber.log.Timber

@HiltAndroidApp
class SuperAIApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        initializeLogging()
    }

    private fun initializeLogging() {
        if (BuildConfig.DEBUG) {
            Timber.plant(Timber.DebugTree())
        }
    }
}
EOF
echo "✅ SuperAIApplication.kt"

# MainActivity.kt
cat > app/src/main/java/com/superai/app/MainActivity.kt << 'EOF'
package com.superai.app

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.superai.app.ui.theme.SuperAITheme
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            SuperAITheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    MainScreen()
                }
            }
        }
    }
}

@Composable
fun MainScreen() {
    Text("Welcome to SuperAI")
}

@Preview(showBackground = true)
@Composable
fun MainScreenPreview() {
    SuperAITheme {
        MainScreen()
    }
}
EOF
echo "✅ MainActivity.kt"

# Theme.kt
cat > app/src/main/java/com/superai/app/ui/theme/Theme.kt << 'EOF'
package com.superai.app.ui.theme

import android.app.Activity
import android.os.Build
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.core.view.WindowCompat

private val LightColors = lightColorScheme(
    primary = md_theme_light_primary,
    onPrimary = md_theme_light_onPrimary,
    primaryContainer = md_theme_light_primaryContainer,
    onPrimaryContainer = md_theme_light_onPrimaryContainer,
    secondary = md_theme_light_secondary,
    onSecondary = md_theme_light_onSecondary,
    secondaryContainer = md_theme_light_secondaryContainer,
    onSecondaryContainer = md_theme_light_onSecondaryContainer,
    tertiary = md_theme_light_tertiary,
    onTertiary = md_theme_light_onTertiary,
    tertiaryContainer = md_theme_light_tertiaryContainer,
    onTertiaryContainer = md_theme_light_onTertiaryContainer,
    error = md_theme_light_error,
    errorContainer = md_theme_light_errorContainer,
    onError = md_theme_light_onError,
    onErrorContainer = md_theme_light_onErrorContainer,
    background = md_theme_light_background,
    onBackground = md_theme_light_onBackground,
    surface = md_theme_light_surface,
    onSurface = md_theme_light_onSurface,
    outline = md_theme_light_outline,
)

private val DarkColors = darkColorScheme(
    primary = md_theme_dark_primary,
    onPrimary = md_theme_dark_onPrimary,
    primaryContainer = md_theme_dark_primaryContainer,
    onPrimaryContainer = md_theme_dark_onPrimaryContainer,
    secondary = md_theme_dark_secondary,
    onSecondary = md_theme_dark_onSecondary,
    secondaryContainer = md_theme_dark_secondaryContainer,
    onSecondaryContainer = md_theme_dark_onSecondaryContainer,
    tertiary = md_theme_dark_tertiary,
    onTertiary = md_theme_dark_onTertiary,
    tertiaryContainer = md_theme_dark_tertiaryContainer,
    onTertiaryContainer = md_theme_dark_onTertiaryContainer,
    error = md_theme_dark_error,
    errorContainer = md_theme_dark_errorContainer,
    onError = md_theme_dark_onError,
    onErrorContainer = md_theme_dark_onErrorContainer,
    background = md_theme_dark_background,
    onBackground = md_theme_dark_onBackground,
    surface = md_theme_dark_surface,
    onSurface = md_theme_dark_onSurface,
    outline = md_theme_dark_outline,
)

@Composable
fun SuperAITheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    dynamicColor: Boolean = true,
    content: @Composable () -> Unit
) {
    val colorScheme = when {
        dynamicColor && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
            val context = LocalContext.current
            if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
        }
        darkTheme -> DarkColors
        else -> LightColors
    }

    val view = LocalView.current
    if (!view.isInEditMode) {
        SideEffect {
            val window = (view.context as Activity).window
            window.statusBarColor = colorScheme.primary.toArgb()
            WindowCompat.getInsetsController(window, view)?.isAppearanceLightStatusBars = !darkTheme
        }
    }

    MaterialTheme(
        colorScheme = colorScheme,
        typography = Typography,
        content = content
    )
}
EOF
echo "✅ Theme.kt"

# Color.kt
cat > app/src/main/java/com/superai/app/ui/theme/Color.kt << 'EOF'
package com.superai.app.ui.theme

import androidx.compose.ui.graphics.Color

val md_theme_light_primary = Color(0xFF6200EE)
val md_theme_light_onPrimary = Color(0xFFFFFFFF)
val md_theme_light_primaryContainer = Color(0xFFEADDFF)
val md_theme_light_onPrimaryContainer = Color(0xFF21005E)
val md_theme_light_secondary = Color(0xFF03DAC6)
val md_theme_light_onSecondary = Color(0xFF000000)
val md_theme_light_secondaryContainer = Color(0xFFB2F5EA)
val md_theme_light_onSecondaryContainer = Color(0xFF001F1B)
val md_theme_light_tertiary = Color(0xFF03DAC6)
val md_theme_light_onTertiary = Color(0xFF000000)
val md_theme_light_tertiaryContainer = Color(0xFFB2F5EA)
val md_theme_light_onTertiaryContainer = Color(0xFF001F1B)
val md_theme_light_error = Color(0xFFCF6679)
val md_theme_light_errorContainer = Color(0xFFF9DEDC)
val md_theme_light_onError = Color(0xFFFFFFFF)
val md_theme_light_onErrorContainer = Color(0xFF410E0B)
val md_theme_light_background = Color(0xFFFFFBFE)
val md_theme_light_onBackground = Color(0xFF1C1B1F)
val md_theme_light_surface = Color(0xFFFFFBFE)
val md_theme_light_onSurface = Color(0xFF1C1B1F)
val md_theme_light_outline = Color(0xFF79747E)

val md_theme_dark_primary = Color(0xFFBB86FC)
val md_theme_dark_onPrimary = Color(0xFF370B1E)
val md_theme_dark_primaryContainer = Color(0xFF4A0E4E)
val md_theme_dark_onPrimaryContainer = Color(0xFFEADDFF)
val md_theme_dark_secondary = Color(0xFF03DAC6)
val md_theme_dark_onSecondary = Color(0xFF000000)
val md_theme_dark_secondaryContainer = Color(0xFF005047)
val md_theme_dark_onSecondaryContainer = Color(0xFFB2F5EA)
val md_theme_dark_tertiary = Color(0xFF03DAC6)
val md_theme_dark_onTertiary = Color(0xFF000000)
val md_theme_dark_tertiaryContainer = Color(0xFF005047)
val md_theme_dark_onTertiaryContainer = Color(0xFFB2F5EA)
val md_theme_dark_error = Color(0xFFF2B8B5)
val md_theme_dark_onError = Color(0xFF601410)
val md_theme_dark_errorContainer = Color(0xFF8C1D18)
val md_theme_dark_onErrorContainer = Color(0xFFF9DEDC)
val md_theme_dark_background = Color(0xFF1C1B1F)
val md_theme_dark_onBackground = Color(0xFFE6E1E6)
val md_theme_dark_surface = Color(0xFF1C1B1F)
val md_theme_dark_onSurface = Color(0xFFE6E1E6)
val md_theme_dark_outline = Color(0xFF998C97)
EOF
echo "✅ Color.kt"

# Type.kt
cat > app/src/main/java/com/superai/app/ui/theme/Type.kt << 'EOF'
package com.superai.app.ui.theme

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp

val Typography = Typography(
    bodyLarge = TextStyle(
        fontFamily = FontFamily.Default,
        fontWeight = FontWeight.Normal,
        fontSize = 16.sp,
        lineHeight = 24.sp,
        letterSpacing = 0.5.sp
    ),
    labelSmall = TextStyle(
        fontFamily = FontFamily.Default,
        fontWeight = FontWeight.Medium,
        fontSize = 11.sp,
        lineHeight = 16.sp,
        letterSpacing = 0.5.sp
    )
)
EOF
echo "✅ Type.kt"

# build.yml
cat > .github/workflows/build.yml << 'EOF'
name: Build

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main, develop ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Set up JDK 21
        uses: actions/setup-java@v4
        with:
          java-version: '21'
          distribution: 'temurin'
          cache: gradle

      - name: Grant execute permission for gradlew
        run: chmod +x gradlew

      - name: Build with Gradle
        run: ./gradlew build

      - name: Run tests
        run: ./gradlew test

      - name: Upload build artifacts
        if: always()
        uses: actions/upload-artifact@v4
        with:
          name: build-artifacts
          path: app/build/outputs/
EOF
echo "✅ build.yml"

# .gitkeep for schemas
touch app/schemas/.gitkeep
echo "✅ app/schemas/.gitkeep"

echo ""
echo "🎉 Setup complete! All files created successfully."
echo ""
echo "📝 Next steps:"
echo "1. Review the files to ensure they're correct"
echo "2. Stage and commit:"
echo "   git add ."
echo "   git commit -m 'fix: add all missing resources and source files for complete build'"
echo "3. Push to GitHub:"
echo "   git push origin main"
echo ""
echo "✨ Your repository is now ready to build!"
