<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <head><title>Enfermedades demográficas</title></head>
  <body>
    <h1>Enfermedades demográficas</h1>
    <xsl:apply-templates/>
</body>
</html>
</xsl:template>

<xsl:template match="/example">
<h2>Enfermedades</h2>
<table border="1">
    <tr bgcolor="purple">
      <th>ID</th>
      <th>Nombre</th>
      <th>Edad media</th>
      <th>Hereditaria</th>
      <th>Causas</th>
      <th>Síntomas</th>
      <th>Prevención</th>
    </tr>
    <xsl:for-each select="compound">
      <tr>
        <td><xsl:value-of select="id"/></td>
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="edad_media"/></td>
        <td><xsl:value-of select="hereditaria"/></td>
        <td><xsl:value-of select="causas"/></td>
        <td><xsl:value-of select="sintomas"/></td>
        <td><xsl:value-of select="prevencion"/></td>
      </tr>
    </xsl:for-each>
  </table>
<br/>

<h2>País</h2>
<table border="1">
      <tr bgcolor="pink">
        <th>ID</th>
        <th>Nombre</th>
        <th>Población</th>
        <th>Población afectada</th>
        <th>Continente</th>
        <th>Enfermedad</th>
      </tr>
      <xsl:for-each select="nombre">
        <tr>
          <td><xsl:value-of select="id"/></td>
          <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="poblacion"/></td>
          <td><xsl:value-of select="poblacion_afectada"/></td>
          <td><xsl:value-of select="continente"/></td>
          <td><xsl:value-of select="enfermedad"/></td>
        </tr>
      </xsl:for-each>
    </table>
<br/>

<h2>Medicamento</h2>
<table border="1">
      <tr bgcolor="yellow">
        <th>ID</th>
        <th>Nombre</th>
        <th>Tipo consumir</th>
        <th>Dosis</th>
        <th>Precio aproximado</th>
        <th>Autorizado</th>
      </tr>
      <xsl:for-each select="chemical">
        <tr>
          <td><xsl:value-of select="id"/></td>
          <td><xsl:value-of select="nombre"/></td>
          <td><xsl:value-of select="tipo_consumir"/></td>
          <td><xsl:value-of select="dosis"/></td>
          <td><xsl:value-of select="precio_aproximado"/></td>
          <td><xsl:value-of select="autorizado"/></td>
        </tr>
      </xsl:for-each>
    </table>
<br/>

</xsl:template>
</xsl:stylesheet>