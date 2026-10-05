import InitE.BackendStages.Metadata.Data180
import InitE.BackendStages.Filtered180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis180_eq : ffiLines Filtered180.lines = localFfis180 := by
  with_unfolding_all rfl
theorem ffiStep180 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis180) : LabToTarget.findFfiNames (Filtered180 :: rest) = suffixFfis180 := by
  rw [findFfiNames_section, localFfis180_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep180
end InitE.BackendStages.Metadata
