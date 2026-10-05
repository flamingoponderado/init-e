import InitE.BackendStages.Metadata.Data193
import InitE.BackendStages.Filtered193
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis193_eq : ffiLines Filtered193.lines = localFfis193 := by
  with_unfolding_all rfl
theorem ffiStep193 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis193) : LabToTarget.findFfiNames (Filtered193 :: rest) = suffixFfis193 := by
  rw [findFfiNames_section, localFfis193_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep193
end InitE.BackendStages.Metadata
