import InitE.BackendStages.Metadata.Ffi160
import InitE.BackendStages.Metadata.Shmem160
import InitE.BackendStages.Metadata.Ffi161
import InitE.BackendStages.Metadata.Shmem161
import InitE.BackendStages.Metadata.Ffi162
import InitE.BackendStages.Metadata.Shmem162
import InitE.BackendStages.Metadata.Ffi163
import InitE.BackendStages.Metadata.Shmem163
import InitE.BackendStages.Metadata.Ffi164
import InitE.BackendStages.Metadata.Shmem164
import InitE.BackendStages.Metadata.Ffi165
import InitE.BackendStages.Metadata.Shmem165
import InitE.BackendStages.Metadata.Ffi166
import InitE.BackendStages.Metadata.Shmem166
import InitE.BackendStages.Metadata.Ffi167
import InitE.BackendStages.Metadata.Shmem167
import InitE.BackendStages.Metadata.Ffi168
import InitE.BackendStages.Metadata.Shmem168
import InitE.BackendStages.Metadata.Ffi169
import InitE.BackendStages.Metadata.Shmem169
import InitE.BackendStages.Metadata.Ffi170
import InitE.BackendStages.Metadata.Shmem170
import InitE.BackendStages.Metadata.Ffi171
import InitE.BackendStages.Metadata.Shmem171
import InitE.BackendStages.Metadata.Ffi172
import InitE.BackendStages.Metadata.Shmem172
import InitE.BackendStages.Metadata.Ffi173
import InitE.BackendStages.Metadata.Shmem173
import InitE.BackendStages.Metadata.Ffi174
import InitE.BackendStages.Metadata.Shmem174
import InitE.BackendStages.Metadata.Ffi175
import InitE.BackendStages.Metadata.Shmem175
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata

theorem ffiChunk160_175 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis175) : LabToTarget.findFfiNames ([Filtered160, Filtered161, Filtered162, Filtered163, Filtered164, Filtered165, Filtered166, Filtered167, Filtered168, Filtered169, Filtered170, Filtered171, Filtered172, Filtered173, Filtered174, Filtered175] ++ rest) = suffixFfis160 := by
  exact ffiStep160 _ ( ffiStep161 _ ( ffiStep162 _ ( ffiStep163 _ ( ffiStep164 _ ( ffiStep165 _ ( ffiStep166 _ ( ffiStep167 _ ( ffiStep168 _ ( ffiStep169 _ ( ffiStep170 _ ( ffiStep171 _ ( ffiStep172 _ ( ffiStep173 _ ( ffiStep174 _ ( ffiStep175 _ (h))))))))))))))))
theorem shmemChunk160_175 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded160, Padded161, Padded162, Padded163, Padded164, Padded165, Padded166, Padded167, Padded168, Padded169, Padded170, Padded171, Padded172, Padded173, Padded174, Padded175] ++ rest) 38700 beforeFfis160 beforeShmem160 = LabToTarget.getShmemInfo rest 47732 afterFfis175 afterShmem175 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 38700 beforeFfis160 beforeShmem160 = _
  rw [shmemStep160]
  change LabToTarget.getShmemInfo _ 38968 beforeFfis161 beforeShmem161 = _
  rw [shmemStep161]
  change LabToTarget.getShmemInfo _ 41340 beforeFfis162 beforeShmem162 = _
  rw [shmemStep162]
  change LabToTarget.getShmemInfo _ 41660 beforeFfis163 beforeShmem163 = _
  rw [shmemStep163]
  change LabToTarget.getShmemInfo _ 43624 beforeFfis164 beforeShmem164 = _
  rw [shmemStep164]
  change LabToTarget.getShmemInfo _ 44240 beforeFfis165 beforeShmem165 = _
  rw [shmemStep165]
  change LabToTarget.getShmemInfo _ 44780 beforeFfis166 beforeShmem166 = _
  rw [shmemStep166]
  change LabToTarget.getShmemInfo _ 45080 beforeFfis167 beforeShmem167 = _
  rw [shmemStep167]
  change LabToTarget.getShmemInfo _ 45348 beforeFfis168 beforeShmem168 = _
  rw [shmemStep168]
  change LabToTarget.getShmemInfo _ 45760 beforeFfis169 beforeShmem169 = _
  rw [shmemStep169]
  change LabToTarget.getShmemInfo _ 46316 beforeFfis170 beforeShmem170 = _
  rw [shmemStep170]
  change LabToTarget.getShmemInfo _ 46736 beforeFfis171 beforeShmem171 = _
  rw [shmemStep171]
  change LabToTarget.getShmemInfo _ 47128 beforeFfis172 beforeShmem172 = _
  rw [shmemStep172]
  change LabToTarget.getShmemInfo _ 47168 beforeFfis173 beforeShmem173 = _
  rw [shmemStep173]
  change LabToTarget.getShmemInfo _ 47216 beforeFfis174 beforeShmem174 = _
  rw [shmemStep174]
  change LabToTarget.getShmemInfo _ 47560 beforeFfis175 beforeShmem175 = _
  rw [shmemStep175]
theorem symbolsChunk160_175 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 38700 ([Padded160, Padded161, Padded162, Padded163, Padded164, Padded165, Padded166, Padded167, Padded168, Padded169, Padded170, Padded171, Padded172, Padded173, Padded174, Padded175] ++ rest) = [(160, 38700, 268), (161, 38968, 2372), (162, 41340, 320), (163, 41660, 1964), (164, 43624, 616), (165, 44240, 540), (166, 44780, 300), (167, 45080, 268), (168, 45348, 412), (169, 45760, 556), (170, 46316, 420), (171, 46736, 392), (172, 47128, 40), (173, 47168, 48), (174, 47216, 344), (175, 47560, 172)] ++ LabToTarget.getSymbols 47732 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength160, symbolLength161, symbolLength162, symbolLength163, symbolLength164, symbolLength165, symbolLength166, symbolLength167, symbolLength168, symbolLength169, symbolLength170, symbolLength171, symbolLength172, symbolLength173, symbolLength174, symbolLength175]
  rfl
#print axioms ffiChunk160_175
#print axioms shmemChunk160_175
#print axioms symbolsChunk160_175
end InitE.BackendStages.Metadata
