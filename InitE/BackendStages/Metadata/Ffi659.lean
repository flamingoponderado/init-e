import InitE.BackendStages.Metadata.Data659
import InitE.BackendStages.Filtered659
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis659_eq : ffiLines Filtered659.lines = localFfis659 := by
  with_unfolding_all rfl
theorem ffiStep659 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis659) : LabToTarget.findFfiNames (Filtered659 :: rest) = suffixFfis659 := by
  rw [findFfiNames_section, localFfis659_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep659
end InitE.BackendStages.Metadata
