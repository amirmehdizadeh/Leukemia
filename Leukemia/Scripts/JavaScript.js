function Del_Confirm(obj)
{
    result = confirm("Are U Sure To Delete ?");
    document.getElementById(obj).value = result;

}