import InitE.BackendStages.Metadata.Data146
import InitE.BackendStages.Filtered146
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis146_eq : ffiLines Filtered146.lines = localFfis146 := by
  with_unfolding_all rfl
theorem ffiStep146 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis146) : LabToTarget.findFfiNames (Filtered146 :: rest) = suffixFfis146 := by
  rw [findFfiNames_section, localFfis146_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep146
end InitE.BackendStages.Metadata
