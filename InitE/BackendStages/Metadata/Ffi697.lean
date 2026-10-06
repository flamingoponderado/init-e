import InitE.BackendStages.Metadata.Data697
import InitE.BackendStages.Filtered697
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis697_eq : ffiLines Filtered697.lines = localFfis697 := by
  with_unfolding_all rfl
theorem ffiStep697 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis697) : LabToTarget.findFfiNames (Filtered697 :: rest) = suffixFfis697 := by
  rw [findFfiNames_section, localFfis697_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep697
end InitE.BackendStages.Metadata
