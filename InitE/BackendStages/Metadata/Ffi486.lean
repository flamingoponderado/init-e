import InitE.BackendStages.Metadata.Data486
import InitE.BackendStages.Filtered486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis486_eq : ffiLines Filtered486.lines = localFfis486 := by
  with_unfolding_all rfl
theorem ffiStep486 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis486) : LabToTarget.findFfiNames (Filtered486 :: rest) = suffixFfis486 := by
  rw [findFfiNames_section, localFfis486_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep486
end InitE.BackendStages.Metadata
