<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/daisyui@4.10.1/dist/full.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Traductor</title>
    </head>
    <body class="bg-lime-200 flex-column items-center justify-center min-h-screen">

        <c:import url="/INC/nav.inc"/>
        <label class="flex items-center justify-center py-2 px-4 border-b border-gray-300 text-lime-800 text-2xl font-medium m-5">Hola Mundo en diferentes idiomas</label>
        <div class="flex flex-col items-center justify-center border-dotted border-4 border-lime-400 m-16 p-5">
            <form action="Traductor" method="post">
                <div class="mb-10">
                    <label for="titulo" class="py-2 px-4 border-b border-gray-300 text-lime-800 text-3xl font-medium m-10">Seleccione un Idioma</label>
                    <select class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-yellow-500 focus:border-indigo-500 sm:text-sm rounded-md mt-5" name="idioma">
                        <option class="text-yellow-800 text-lg font-black" value="español">Español</option>
                        <option class="text-yellow-800 text-lg font-black" value="ingles">Ingl&eacute;s</option>
                        <option class="text-yellow-800 text-lg font-black" value="frances">Franc&eacute;s</option>
                        <option class="text-yellow-800 text-lg font-black" value="aleman">Alem&aacute;n</option>
                        <option class="text-yellow-800 text-lg font-black" value="italiano">Italiano</option>
                        <option class="text-yellow-800 text-lg font-black" value="portugues">Portugu&eacute;s</option>
                        <option class="text-yellow-800 text-lg font-black" value="ruso">Ruso</option>
                        <option class="text-yellow-800 text-lg font-black" value="chino">Chino</option>
                        <option class="text-yellow-800 text-lg font-black" value="japones">Japon&eacute;s</option>
                        <option class="text-yellow-800 text-lg font-black" value="arabe">&Aacute;rabe</option>
                    </select>
                    <input type="submit" class="mx-auto block w-60 py-2 text-base bg-lime-700 hover:bg-lime-600 focus:outline-none focus:ring-2 focus:ring-lime-500 focus:ring-opacity-50 text-white sm:text-sm rounded-md mt-48" value="Traducir">
                </div>
            </form>
            <p><c:out value="${holaMundo}"/></p>
        </div>

        <c:import url="/INC/footer.inc"/>
    </body>

</html>
