import InitE.BackendStages.Metadata.Data325
import InitE.BackendStages.Filtered325
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis325_eq : ffiLines Filtered325.lines = localFfis325 := by
  with_unfolding_all rfl
theorem ffiStep325 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis325) : LabToTarget.findFfiNames (Filtered325 :: rest) = suffixFfis325 := by
  rw [findFfiNames_section, localFfis325_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep325
end InitE.BackendStages.Metadata
