import InitE.BackendStages.Metadata.Data482
import InitE.BackendStages.Filtered482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis482_eq : ffiLines Filtered482.lines = localFfis482 := by
  with_unfolding_all rfl
theorem ffiStep482 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis482) : LabToTarget.findFfiNames (Filtered482 :: rest) = suffixFfis482 := by
  rw [findFfiNames_section, localFfis482_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep482
end InitE.BackendStages.Metadata
