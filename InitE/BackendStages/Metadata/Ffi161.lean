import InitE.BackendStages.Metadata.Data161
import InitE.BackendStages.Filtered161
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis161_eq : ffiLines Filtered161.lines = localFfis161 := by
  with_unfolding_all rfl
theorem ffiStep161 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis161) : LabToTarget.findFfiNames (Filtered161 :: rest) = suffixFfis161 := by
  rw [findFfiNames_section, localFfis161_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep161
end InitE.BackendStages.Metadata
