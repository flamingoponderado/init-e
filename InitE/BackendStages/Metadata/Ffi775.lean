import InitE.BackendStages.Metadata.Data775
import InitE.BackendStages.Filtered775
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis775_eq : ffiLines Filtered775.lines = localFfis775 := by
  with_unfolding_all rfl
theorem ffiStep775 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis775) : LabToTarget.findFfiNames (Filtered775 :: rest) = suffixFfis775 := by
  rw [findFfiNames_section, localFfis775_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep775
end InitE.BackendStages.Metadata
