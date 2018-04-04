#PD v1.00

$inkey = ""
$chkkey = ""
$moji1 = @("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")
$moji2 = @("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
$moji3 = @("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",0,1,2,3,4,5,6,7,8,9)
$suuji = @(0,1,2,3,4,5,6,7,8,9)
$max = 64

for($a = 0;$a -le $max;$a++){
    for($b = 0;$b -le $max;$b++){
        for($c = 0;$c -le $max;$c++){
            for($d = 0;$d -le $max;$d++){
                for($e = 0;$e -le $max;$e++){
                    for($f = 0;$f -le $max;$f++){
                        for($g = 0;$g -le $max;$g++){
                            for($h = 0;$h -le $max;$h++){
                                for($i = 0;$i -le $max;$i++){
                                    for($j = 0;$j -le $max;$j++){
                                        for($k = 0;$k -le $max;$k++){
                                        $chkkey = $moji3[$a] + $moji3[$b] + $moji3[$c] + $moji3[$e] + $moji3[$f] + $moji3[$g] + $moji3[$h] + $moji3[$i] + $moji3[$j] + $moji3[$k]
                                        $data = [System.Text.Encoding]::ASCII.GetBytes($chkkey)
                                        $md5 = [System.Security.Cryptography.MD5]::create()
                                        $hash = $md5.ComputeHash($data)
                                        $result =[System.BitConverter]::ToString($hash).ToLower().Replace("-", "")
                                        $chkkey = $chkkey + " : " + $result
                                        Write-Output $chkkey
                                        Add-Content out.txt $chkkey
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}