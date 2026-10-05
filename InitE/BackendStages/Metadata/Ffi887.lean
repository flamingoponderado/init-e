import InitE.BackendStages.Metadata.Data887
import InitE.BackendStages.Filtered887
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis887_eq : ffiLines Filtered887.lines = localFfis887 := by
  with_unfolding_all rfl
theorem ffiStep887 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis887) : LabToTarget.findFfiNames (Filtered887 :: rest) = suffixFfis887 := by
  rw [findFfiNames_section, localFfis887_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep887
end InitE.BackendStages.Metadata
