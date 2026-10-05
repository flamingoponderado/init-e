import InitE.BackendStages.Metadata.Data829
import InitE.BackendStages.Filtered829
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis829_eq : ffiLines Filtered829.lines = localFfis829 := by
  with_unfolding_all rfl
theorem ffiStep829 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis829) : LabToTarget.findFfiNames (Filtered829 :: rest) = suffixFfis829 := by
  rw [findFfiNames_section, localFfis829_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep829
end InitE.BackendStages.Metadata
