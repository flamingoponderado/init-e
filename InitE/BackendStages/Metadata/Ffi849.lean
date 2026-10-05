import InitE.BackendStages.Metadata.Data849
import InitE.BackendStages.Filtered849
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis849_eq : ffiLines Filtered849.lines = localFfis849 := by
  with_unfolding_all rfl
theorem ffiStep849 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis849) : LabToTarget.findFfiNames (Filtered849 :: rest) = suffixFfis849 := by
  rw [findFfiNames_section, localFfis849_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep849
end InitE.BackendStages.Metadata
