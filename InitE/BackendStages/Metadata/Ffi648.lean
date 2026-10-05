import InitE.BackendStages.Metadata.Data648
import InitE.BackendStages.Filtered648
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis648_eq : ffiLines Filtered648.lines = localFfis648 := by
  with_unfolding_all rfl
theorem ffiStep648 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis648) : LabToTarget.findFfiNames (Filtered648 :: rest) = suffixFfis648 := by
  rw [findFfiNames_section, localFfis648_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep648
end InitE.BackendStages.Metadata
