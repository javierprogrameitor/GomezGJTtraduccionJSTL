<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/daisyui@4.10.1/dist/full.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Traduciones</title>
    </head>
    <body class="bg-lime-200 flex-column items-center justify-center min-h-screen">

        <c:import url="/INC/nav.inc"/>
        <div class="flex flex-col items-center justify-center border-dotted border-4 border-lime-400 m-14 p-8">
        <p class="text-lime-700 text-2xl font-medium m-4">Hola Mundo en diferentes idiomas..</p>
        <p class="text-lime-700 text-2xl font-medium m-4">Hola Mundo en <c:out value="${idioma}"/> es: </p>
        <p class="text-yellow-600 text-4xl font-black m-10"> <c:out value="${holaMundo}"/></p>
        <form action="Empezar" method="post">
              <input type="submit" class="mx-auto block w-60 py-2 text-base bg-lime-700 hover:bg-lime-600 focus:outline-none focus:ring-2 focus:ring-lime-500 focus:ring-opacity-50 text-white sm:text-sm rounded-md mt-32" value="Volver">
        </form>
        </div>
        <c:import url="/INC/footer.inc"/>
    </body>
</html>
