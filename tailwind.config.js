/** @type {import('tailwindcss').Config} */
const execSync = require('child_process').execSync;
const outputPhlexUI = execSync('bundle show phlex_ui', { encoding: 'utf-8' });
const phlex_ui_path = outputPhlexUI.trim() + '/**/*.rb';
const defaultTheme = require("tailwindcss/defaultTheme");

export default {
  darkMode: ["class"],
  content: [
    './app/views/**/*.rb',
    "./app/views/**/*.{erb,haml,html,slim,rb}",
    "./app/views/components/**/*.rb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
    "./app/frontend/**/*.css",
    "./app/frontend/**/*.js",
    phlex_ui_path
  ],
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    extend: {
      colors: {
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        warning: {
          DEFAULT: "hsl(var(--warning))",
          foreground: "hsl(var(--warning-foreground))",
        },
        success: {
          DEFAULT: "hsl(var(--success))",
          foreground: "hsl(var(--success-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        'green-haze': {
          '50': 'hsl(143, 62%, 96%)',
          '100': 'hsl(141, 61%, 90%)',
          '200': 'hsl(145, 56%, 80%)',
          '300': 'hsl(149, 53%, 67%)',
          '400': 'hsl(150, 47%, 52%)',
          '500': 'hsl(152, 62%, 39%)',
          '600': 'hsl(154, 69%, 30%)',
          '700': 'hsl(155, 69%, 24%)',
          '800': 'hsl(156, 64%, 20%)',
          '900': 'hsl(157, 64%, 16%)',
          '950': 'hsl(158, 65%, 9%)',
        },
        'star-dust': {
          '50': 'hsl(60, 5%, 96%)',
          '100': 'hsl(60, 2%, 90%)',
          '200': 'hsl(60, 1%, 82%)',
          '300': 'hsl(45, 3%, 69%)',
          '400': 'hsl(45, 2%, 60%)',
          '500': 'hsl(30, 2%, 43%)',
          '600': 'hsl(45, 2%, 36%)',
          '700': 'hsl(30, 1%, 31%)',
          '800': 'hsl(30, 1%, 27%)',
          '900': 'hsl(60, 1%, 24%)',
          '950': 'hsl(60, 3%, 15%)',
        },
      },
      borderRadius: {
        lg: `var(--radius)`,
        md: `calc(var(--radius) - 2px)`,
        sm: "calc(var(--radius) - 4px)",
      },
      fontFamily: {
        sans: ["var(--font-sans)", ...defaultTheme.fontFamily.sans],
        mono: ["var(--font-mono)", ...defaultTheme.fontFamily.mono],
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
};
