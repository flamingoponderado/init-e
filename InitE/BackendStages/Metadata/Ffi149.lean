import InitE.BackendStages.Metadata.Data149
import InitE.BackendStages.Filtered149
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis149_eq : ffiLines Filtered149.lines = localFfis149 := by
  with_unfolding_all rfl
theorem ffiStep149 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis149) : LabToTarget.findFfiNames (Filtered149 :: rest) = suffixFfis149 := by
  rw [findFfiNames_section, localFfis149_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep149
end InitE.BackendStages.Metadata
