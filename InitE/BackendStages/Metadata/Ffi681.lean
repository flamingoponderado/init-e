import InitE.BackendStages.Metadata.Data681
import InitE.BackendStages.Filtered681
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis681_eq : ffiLines Filtered681.lines = localFfis681 := by
  with_unfolding_all rfl
theorem ffiStep681 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis681) : LabToTarget.findFfiNames (Filtered681 :: rest) = suffixFfis681 := by
  rw [findFfiNames_section, localFfis681_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep681
end InitE.BackendStages.Metadata
