import InitE.BackendStages.Metadata.Data694
import InitE.BackendStages.Filtered694
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis694_eq : ffiLines Filtered694.lines = localFfis694 := by
  with_unfolding_all rfl
theorem ffiStep694 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis694) : LabToTarget.findFfiNames (Filtered694 :: rest) = suffixFfis694 := by
  rw [findFfiNames_section, localFfis694_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep694
end InitE.BackendStages.Metadata
