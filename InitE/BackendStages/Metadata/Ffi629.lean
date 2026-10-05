import InitE.BackendStages.Metadata.Data629
import InitE.BackendStages.Filtered629
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis629_eq : ffiLines Filtered629.lines = localFfis629 := by
  with_unfolding_all rfl
theorem ffiStep629 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis629) : LabToTarget.findFfiNames (Filtered629 :: rest) = suffixFfis629 := by
  rw [findFfiNames_section, localFfis629_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep629
end InitE.BackendStages.Metadata
