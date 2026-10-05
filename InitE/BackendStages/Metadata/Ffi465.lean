import InitE.BackendStages.Metadata.Data465
import InitE.BackendStages.Filtered465
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis465_eq : ffiLines Filtered465.lines = localFfis465 := by
  with_unfolding_all rfl
theorem ffiStep465 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis465) : LabToTarget.findFfiNames (Filtered465 :: rest) = suffixFfis465 := by
  rw [findFfiNames_section, localFfis465_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep465
end InitE.BackendStages.Metadata
