import InitE.BackendStages.Metadata.Data532
import InitE.BackendStages.Filtered532
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis532_eq : ffiLines Filtered532.lines = localFfis532 := by
  with_unfolding_all rfl
theorem ffiStep532 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis532) : LabToTarget.findFfiNames (Filtered532 :: rest) = suffixFfis532 := by
  rw [findFfiNames_section, localFfis532_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep532
end InitE.BackendStages.Metadata
