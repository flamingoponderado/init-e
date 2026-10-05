import InitE.BackendStages.Metadata.Data541
import InitE.BackendStages.Filtered541
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis541_eq : ffiLines Filtered541.lines = localFfis541 := by
  with_unfolding_all rfl
theorem ffiStep541 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis541) : LabToTarget.findFfiNames (Filtered541 :: rest) = suffixFfis541 := by
  rw [findFfiNames_section, localFfis541_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep541
end InitE.BackendStages.Metadata
