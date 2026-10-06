import InitE.BackendStages.Metadata.Data341
import InitE.BackendStages.Filtered341
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis341_eq : ffiLines Filtered341.lines = localFfis341 := by
  with_unfolding_all rfl
theorem ffiStep341 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis341) : LabToTarget.findFfiNames (Filtered341 :: rest) = suffixFfis341 := by
  rw [findFfiNames_section, localFfis341_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep341
end InitE.BackendStages.Metadata
