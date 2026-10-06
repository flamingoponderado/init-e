import InitE.BackendStages.Metadata.Data724
import InitE.BackendStages.Filtered724
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis724_eq : ffiLines Filtered724.lines = localFfis724 := by
  with_unfolding_all rfl
theorem ffiStep724 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis724) : LabToTarget.findFfiNames (Filtered724 :: rest) = suffixFfis724 := by
  rw [findFfiNames_section, localFfis724_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep724
end InitE.BackendStages.Metadata
