import InitE.BackendStages.Metadata.Data842
import InitE.BackendStages.Filtered842
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis842_eq : ffiLines Filtered842.lines = localFfis842 := by
  with_unfolding_all rfl
theorem ffiStep842 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis842) : LabToTarget.findFfiNames (Filtered842 :: rest) = suffixFfis842 := by
  rw [findFfiNames_section, localFfis842_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep842
end InitE.BackendStages.Metadata
