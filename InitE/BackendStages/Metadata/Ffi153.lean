import InitE.BackendStages.Metadata.Data153
import InitE.BackendStages.Filtered153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis153_eq : ffiLines Filtered153.lines = localFfis153 := by
  with_unfolding_all rfl
theorem ffiStep153 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis153) : LabToTarget.findFfiNames (Filtered153 :: rest) = suffixFfis153 := by
  rw [findFfiNames_section, localFfis153_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep153
end InitE.BackendStages.Metadata
