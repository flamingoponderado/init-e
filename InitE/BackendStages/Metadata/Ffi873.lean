import InitE.BackendStages.Metadata.Data873
import InitE.BackendStages.Filtered873
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis873_eq : ffiLines Filtered873.lines = localFfis873 := by
  with_unfolding_all rfl
theorem ffiStep873 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis873) : LabToTarget.findFfiNames (Filtered873 :: rest) = suffixFfis873 := by
  rw [findFfiNames_section, localFfis873_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep873
end InitE.BackendStages.Metadata
