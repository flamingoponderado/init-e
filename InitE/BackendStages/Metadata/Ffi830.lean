import InitE.BackendStages.Metadata.Data830
import InitE.BackendStages.Filtered830
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis830_eq : ffiLines Filtered830.lines = localFfis830 := by
  with_unfolding_all rfl
theorem ffiStep830 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis830) : LabToTarget.findFfiNames (Filtered830 :: rest) = suffixFfis830 := by
  rw [findFfiNames_section, localFfis830_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep830
end InitE.BackendStages.Metadata
