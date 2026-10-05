import InitE.BackendStages.Metadata.Data463
import InitE.BackendStages.Filtered463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis463_eq : ffiLines Filtered463.lines = localFfis463 := by
  with_unfolding_all rfl
theorem ffiStep463 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis463) : LabToTarget.findFfiNames (Filtered463 :: rest) = suffixFfis463 := by
  rw [findFfiNames_section, localFfis463_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep463
end InitE.BackendStages.Metadata
