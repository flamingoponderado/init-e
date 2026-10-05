import InitE.BackendStages.Metadata.Data256
import InitE.BackendStages.Filtered256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis256_eq : ffiLines Filtered256.lines = localFfis256 := by
  with_unfolding_all rfl
theorem ffiStep256 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis256) : LabToTarget.findFfiNames (Filtered256 :: rest) = suffixFfis256 := by
  rw [findFfiNames_section, localFfis256_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep256
end InitE.BackendStages.Metadata
