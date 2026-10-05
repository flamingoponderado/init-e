import InitE.BackendStages.Metadata.Data662
import InitE.BackendStages.Filtered662
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis662_eq : ffiLines Filtered662.lines = localFfis662 := by
  with_unfolding_all rfl
theorem ffiStep662 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis662) : LabToTarget.findFfiNames (Filtered662 :: rest) = suffixFfis662 := by
  rw [findFfiNames_section, localFfis662_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep662
end InitE.BackendStages.Metadata
