import InitE.BackendStages.Metadata.Data448
import InitE.BackendStages.Filtered448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis448_eq : ffiLines Filtered448.lines = localFfis448 := by
  with_unfolding_all rfl
theorem ffiStep448 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis448) : LabToTarget.findFfiNames (Filtered448 :: rest) = suffixFfis448 := by
  rw [findFfiNames_section, localFfis448_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep448
end InitE.BackendStages.Metadata
