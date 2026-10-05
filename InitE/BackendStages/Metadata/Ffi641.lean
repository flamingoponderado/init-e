import InitE.BackendStages.Metadata.Data641
import InitE.BackendStages.Filtered641
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis641_eq : ffiLines Filtered641.lines = localFfis641 := by
  with_unfolding_all rfl
theorem ffiStep641 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis641) : LabToTarget.findFfiNames (Filtered641 :: rest) = suffixFfis641 := by
  rw [findFfiNames_section, localFfis641_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep641
end InitE.BackendStages.Metadata
