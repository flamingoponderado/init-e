import InitE.BackendStages.Metadata.Data564
import InitE.BackendStages.Filtered564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis564_eq : ffiLines Filtered564.lines = localFfis564 := by
  with_unfolding_all rfl
theorem ffiStep564 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis564) : LabToTarget.findFfiNames (Filtered564 :: rest) = suffixFfis564 := by
  rw [findFfiNames_section, localFfis564_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep564
end InitE.BackendStages.Metadata
