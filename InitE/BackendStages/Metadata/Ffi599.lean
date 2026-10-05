import InitE.BackendStages.Metadata.Data599
import InitE.BackendStages.Filtered599
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis599_eq : ffiLines Filtered599.lines = localFfis599 := by
  with_unfolding_all rfl
theorem ffiStep599 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis599) : LabToTarget.findFfiNames (Filtered599 :: rest) = suffixFfis599 := by
  rw [findFfiNames_section, localFfis599_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep599
end InitE.BackendStages.Metadata
