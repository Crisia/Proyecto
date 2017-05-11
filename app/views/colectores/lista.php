<p>Lista de colectores:</p>

<table border="1">
<th>
    <tr>ID</tr>
    <tr>Nombre</tr>
</th>
<?php foreach($colectores as $colector) { ?>
  <tr>
      <td><?php echo $colector->id; ?></td>
      <td><a href='/colectores/detalle/?id=<?php echo $colector->id; ?>'><?php echo $colector->name; ?></a></td>
  </tr>
<?php } ?>

</table>
