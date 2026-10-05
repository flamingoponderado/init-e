import InitE.BackendStages.Metadata.Ffi544
import InitE.BackendStages.Metadata.Shmem544
import InitE.BackendStages.Metadata.Ffi545
import InitE.BackendStages.Metadata.Shmem545
import InitE.BackendStages.Metadata.Ffi546
import InitE.BackendStages.Metadata.Shmem546
import InitE.BackendStages.Metadata.Ffi547
import InitE.BackendStages.Metadata.Shmem547
import InitE.BackendStages.Metadata.Ffi548
import InitE.BackendStages.Metadata.Shmem548
import InitE.BackendStages.Metadata.Ffi549
import InitE.BackendStages.Metadata.Shmem549
import InitE.BackendStages.Metadata.Ffi550
import InitE.BackendStages.Metadata.Shmem550
import InitE.BackendStages.Metadata.Ffi551
import InitE.BackendStages.Metadata.Shmem551
import InitE.BackendStages.Metadata.Ffi552
import InitE.BackendStages.Metadata.Shmem552
import InitE.BackendStages.Metadata.Ffi553
import InitE.BackendStages.Metadata.Shmem553
import InitE.BackendStages.Metadata.Ffi554
import InitE.BackendStages.Metadata.Shmem554
import InitE.BackendStages.Metadata.Ffi555
import InitE.BackendStages.Metadata.Shmem555
import InitE.BackendStages.Metadata.Ffi556
import InitE.BackendStages.Metadata.Shmem556
import InitE.BackendStages.Metadata.Ffi557
import InitE.BackendStages.Metadata.Shmem557
import InitE.BackendStages.Metadata.Ffi558
import InitE.BackendStages.Metadata.Shmem558
import InitE.BackendStages.Metadata.Ffi559
import InitE.BackendStages.Metadata.Shmem559
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata

theorem ffiChunk544_559 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis559) : LabToTarget.findFfiNames ([Filtered544, Filtered545, Filtered546, Filtered547, Filtered548, Filtered549, Filtered550, Filtered551, Filtered552, Filtered553, Filtered554, Filtered555, Filtered556, Filtered557, Filtered558, Filtered559] ++ rest) = suffixFfis544 := by
  exact ffiStep544 _ ( ffiStep545 _ ( ffiStep546 _ ( ffiStep547 _ ( ffiStep548 _ ( ffiStep549 _ ( ffiStep550 _ ( ffiStep551 _ ( ffiStep552 _ ( ffiStep553 _ ( ffiStep554 _ ( ffiStep555 _ ( ffiStep556 _ ( ffiStep557 _ ( ffiStep558 _ ( ffiStep559 _ (h))))))))))))))))
theorem shmemChunk544_559 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded544, Padded545, Padded546, Padded547, Padded548, Padded549, Padded550, Padded551, Padded552, Padded553, Padded554, Padded555, Padded556, Padded557, Padded558, Padded559] ++ rest) 344900 beforeFfis544 beforeShmem544 = LabToTarget.getShmemInfo rest 360780 afterFfis559 afterShmem559 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 344900 beforeFfis544 beforeShmem544 = _
  rw [shmemStep544]
  change LabToTarget.getShmemInfo _ 345536 beforeFfis545 beforeShmem545 = _
  rw [shmemStep545]
  change LabToTarget.getShmemInfo _ 346144 beforeFfis546 beforeShmem546 = _
  rw [shmemStep546]
  change LabToTarget.getShmemInfo _ 346880 beforeFfis547 beforeShmem547 = _
  rw [shmemStep547]
  change LabToTarget.getShmemInfo _ 347052 beforeFfis548 beforeShmem548 = _
  rw [shmemStep548]
  change LabToTarget.getShmemInfo _ 350556 beforeFfis549 beforeShmem549 = _
  rw [shmemStep549]
  change LabToTarget.getShmemInfo _ 350824 beforeFfis550 beforeShmem550 = _
  rw [shmemStep550]
  change LabToTarget.getShmemInfo _ 351092 beforeFfis551 beforeShmem551 = _
  rw [shmemStep551]
  change LabToTarget.getShmemInfo _ 352204 beforeFfis552 beforeShmem552 = _
  rw [shmemStep552]
  change LabToTarget.getShmemInfo _ 356316 beforeFfis553 beforeShmem553 = _
  rw [shmemStep553]
  change LabToTarget.getShmemInfo _ 357080 beforeFfis554 beforeShmem554 = _
  rw [shmemStep554]
  change LabToTarget.getShmemInfo _ 358020 beforeFfis555 beforeShmem555 = _
  rw [shmemStep555]
  change LabToTarget.getShmemInfo _ 358500 beforeFfis556 beforeShmem556 = _
  rw [shmemStep556]
  change LabToTarget.getShmemInfo _ 359432 beforeFfis557 beforeShmem557 = _
  rw [shmemStep557]
  change LabToTarget.getShmemInfo _ 359916 beforeFfis558 beforeShmem558 = _
  rw [shmemStep558]
  change LabToTarget.getShmemInfo _ 360396 beforeFfis559 beforeShmem559 = _
  rw [shmemStep559]
theorem symbolsChunk544_559 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 344900 ([Padded544, Padded545, Padded546, Padded547, Padded548, Padded549, Padded550, Padded551, Padded552, Padded553, Padded554, Padded555, Padded556, Padded557, Padded558, Padded559] ++ rest) = [(544, 344900, 636), (545, 345536, 608), (546, 346144, 736), (547, 346880, 172), (548, 347052, 3504), (549, 350556, 268), (550, 350824, 268), (551, 351092, 1112), (552, 352204, 4112), (553, 356316, 764), (554, 357080, 940), (555, 358020, 480), (556, 358500, 932), (557, 359432, 484), (558, 359916, 480), (559, 360396, 384)] ++ LabToTarget.getSymbols 360780 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength544, symbolLength545, symbolLength546, symbolLength547, symbolLength548, symbolLength549, symbolLength550, symbolLength551, symbolLength552, symbolLength553, symbolLength554, symbolLength555, symbolLength556, symbolLength557, symbolLength558, symbolLength559]
  rfl
#print axioms ffiChunk544_559
#print axioms shmemChunk544_559
#print axioms symbolsChunk544_559
end InitE.BackendStages.Metadata
