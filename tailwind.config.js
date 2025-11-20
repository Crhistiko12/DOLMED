/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb", 
    "./app/javascript/**/*.js",
    "./app/assets/stylesheets/**/*.scss",
    "./app/components/**/*.{erb,html,rb}" // ← Agregar si usas componentes
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          blue: '#003B5C',    // ← Estructura de objetos para mejor organización
          green: '#00A88F',   // ← Así puedes usar bg-primary-blue y text-primary-green
        }
      },
      fontFamily: {
        sans: ['Inter', 'sans-serif'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
  ],
}