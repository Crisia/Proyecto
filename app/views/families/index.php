<p>Lista de familias:</p>

<?php foreach($families as $family) { ?>
  <p>
    <a href='/families/show/?id=<?php echo $family->id; ?>'><?php echo $family->name; ?></a>
  </p>
<?php } ?>