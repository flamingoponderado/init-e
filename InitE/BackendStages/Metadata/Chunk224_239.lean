import InitE.BackendStages.Metadata.Ffi224
import InitE.BackendStages.Metadata.Shmem224
import InitE.BackendStages.Metadata.Ffi225
import InitE.BackendStages.Metadata.Shmem225
import InitE.BackendStages.Metadata.Ffi226
import InitE.BackendStages.Metadata.Shmem226
import InitE.BackendStages.Metadata.Ffi227
import InitE.BackendStages.Metadata.Shmem227
import InitE.BackendStages.Metadata.Ffi228
import InitE.BackendStages.Metadata.Shmem228
import InitE.BackendStages.Metadata.Ffi229
import InitE.BackendStages.Metadata.Shmem229
import InitE.BackendStages.Metadata.Ffi230
import InitE.BackendStages.Metadata.Shmem230
import InitE.BackendStages.Metadata.Ffi231
import InitE.BackendStages.Metadata.Shmem231
import InitE.BackendStages.Metadata.Ffi232
import InitE.BackendStages.Metadata.Shmem232
import InitE.BackendStages.Metadata.Ffi233
import InitE.BackendStages.Metadata.Shmem233
import InitE.BackendStages.Metadata.Ffi234
import InitE.BackendStages.Metadata.Shmem234
import InitE.BackendStages.Metadata.Ffi235
import InitE.BackendStages.Metadata.Shmem235
import InitE.BackendStages.Metadata.Ffi236
import InitE.BackendStages.Metadata.Shmem236
import InitE.BackendStages.Metadata.Ffi237
import InitE.BackendStages.Metadata.Shmem237
import InitE.BackendStages.Metadata.Ffi238
import InitE.BackendStages.Metadata.Shmem238
import InitE.BackendStages.Metadata.Ffi239
import InitE.BackendStages.Metadata.Shmem239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata

theorem ffiChunk224_239 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis239) : LabToTarget.findFfiNames ([Filtered224, Filtered225, Filtered226, Filtered227, Filtered228, Filtered229, Filtered230, Filtered231, Filtered232, Filtered233, Filtered234, Filtered235, Filtered236, Filtered237, Filtered238, Filtered239] ++ rest) = suffixFfis224 := by
  exact ffiStep224 _ ( ffiStep225 _ ( ffiStep226 _ ( ffiStep227 _ ( ffiStep228 _ ( ffiStep229 _ ( ffiStep230 _ ( ffiStep231 _ ( ffiStep232 _ ( ffiStep233 _ ( ffiStep234 _ ( ffiStep235 _ ( ffiStep236 _ ( ffiStep237 _ ( ffiStep238 _ ( ffiStep239 _ (h))))))))))))))))
theorem shmemChunk224_239 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded224, Padded225, Padded226, Padded227, Padded228, Padded229, Padded230, Padded231, Padded232, Padded233, Padded234, Padded235, Padded236, Padded237, Padded238, Padded239] ++ rest) 76496 beforeFfis224 beforeShmem224 = LabToTarget.getShmemInfo rest 109452 afterFfis239 afterShmem239 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 76496 beforeFfis224 beforeShmem224 = _
  rw [shmemStep224]
  change LabToTarget.getShmemInfo _ 76556 beforeFfis225 beforeShmem225 = _
  rw [shmemStep225]
  change LabToTarget.getShmemInfo _ 76668 beforeFfis226 beforeShmem226 = _
  rw [shmemStep226]
  change LabToTarget.getShmemInfo _ 76748 beforeFfis227 beforeShmem227 = _
  rw [shmemStep227]
  change LabToTarget.getShmemInfo _ 76772 beforeFfis228 beforeShmem228 = _
  rw [shmemStep228]
  change LabToTarget.getShmemInfo _ 77816 beforeFfis229 beforeShmem229 = _
  rw [shmemStep229]
  change LabToTarget.getShmemInfo _ 78692 beforeFfis230 beforeShmem230 = _
  rw [shmemStep230]
  change LabToTarget.getShmemInfo _ 80732 beforeFfis231 beforeShmem231 = _
  rw [shmemStep231]
  change LabToTarget.getShmemInfo _ 88432 beforeFfis232 beforeShmem232 = _
  rw [shmemStep232]
  change LabToTarget.getShmemInfo _ 89832 beforeFfis233 beforeShmem233 = _
  rw [shmemStep233]
  change LabToTarget.getShmemInfo _ 99248 beforeFfis234 beforeShmem234 = _
  rw [shmemStep234]
  change LabToTarget.getShmemInfo _ 100480 beforeFfis235 beforeShmem235 = _
  rw [shmemStep235]
  change LabToTarget.getShmemInfo _ 101212 beforeFfis236 beforeShmem236 = _
  rw [shmemStep236]
  change LabToTarget.getShmemInfo _ 103000 beforeFfis237 beforeShmem237 = _
  rw [shmemStep237]
  change LabToTarget.getShmemInfo _ 107964 beforeFfis238 beforeShmem238 = _
  rw [shmemStep238]
  change LabToTarget.getShmemInfo _ 108604 beforeFfis239 beforeShmem239 = _
  rw [shmemStep239]
theorem symbolsChunk224_239 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 76496 ([Padded224, Padded225, Padded226, Padded227, Padded228, Padded229, Padded230, Padded231, Padded232, Padded233, Padded234, Padded235, Padded236, Padded237, Padded238, Padded239] ++ rest) = [(224, 76496, 60), (225, 76556, 112), (226, 76668, 80), (227, 76748, 24), (228, 76772, 1044), (229, 77816, 876), (230, 78692, 2040), (231, 80732, 7700), (232, 88432, 1400), (233, 89832, 9416), (234, 99248, 1232), (235, 100480, 732), (236, 101212, 1788), (237, 103000, 4964), (238, 107964, 640), (239, 108604, 848)] ++ LabToTarget.getSymbols 109452 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength224, symbolLength225, symbolLength226, symbolLength227, symbolLength228, symbolLength229, symbolLength230, symbolLength231, symbolLength232, symbolLength233, symbolLength234, symbolLength235, symbolLength236, symbolLength237, symbolLength238, symbolLength239]
  rfl
#print axioms ffiChunk224_239
#print axioms shmemChunk224_239
#print axioms symbolsChunk224_239
end InitE.BackendStages.Metadata
