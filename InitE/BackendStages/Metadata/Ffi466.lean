import InitE.BackendStages.Metadata.Data466
import InitE.BackendStages.Filtered466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis466_eq : ffiLines Filtered466.lines = localFfis466 := by
  with_unfolding_all rfl
theorem ffiStep466 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis466) : LabToTarget.findFfiNames (Filtered466 :: rest) = suffixFfis466 := by
  rw [findFfiNames_section, localFfis466_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep466
end InitE.BackendStages.Metadata
