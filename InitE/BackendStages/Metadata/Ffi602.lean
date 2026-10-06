import InitE.BackendStages.Metadata.Data602
import InitE.BackendStages.Filtered602
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis602_eq : ffiLines Filtered602.lines = localFfis602 := by
  with_unfolding_all rfl
theorem ffiStep602 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis602) : LabToTarget.findFfiNames (Filtered602 :: rest) = suffixFfis602 := by
  rw [findFfiNames_section, localFfis602_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep602
end InitE.BackendStages.Metadata
