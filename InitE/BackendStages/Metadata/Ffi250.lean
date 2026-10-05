import InitE.BackendStages.Metadata.Data250
import InitE.BackendStages.Filtered250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis250_eq : ffiLines Filtered250.lines = localFfis250 := by
  with_unfolding_all rfl
theorem ffiStep250 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis250) : LabToTarget.findFfiNames (Filtered250 :: rest) = suffixFfis250 := by
  rw [findFfiNames_section, localFfis250_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep250
end InitE.BackendStages.Metadata
