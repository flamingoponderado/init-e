import InitE.BackendStages.Metadata.Data494
import InitE.BackendStages.Filtered494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis494_eq : ffiLines Filtered494.lines = localFfis494 := by
  with_unfolding_all rfl
theorem ffiStep494 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis494) : LabToTarget.findFfiNames (Filtered494 :: rest) = suffixFfis494 := by
  rw [findFfiNames_section, localFfis494_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep494
end InitE.BackendStages.Metadata
