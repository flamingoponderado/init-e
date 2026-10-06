import InitE.BackendStages.Metadata.Data682
import InitE.BackendStages.Filtered682
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis682_eq : ffiLines Filtered682.lines = localFfis682 := by
  with_unfolding_all rfl
theorem ffiStep682 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis682) : LabToTarget.findFfiNames (Filtered682 :: rest) = suffixFfis682 := by
  rw [findFfiNames_section, localFfis682_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep682
end InitE.BackendStages.Metadata
