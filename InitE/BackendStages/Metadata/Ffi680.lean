import InitE.BackendStages.Metadata.Data680
import InitE.BackendStages.Filtered680
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis680_eq : ffiLines Filtered680.lines = localFfis680 := by
  with_unfolding_all rfl
theorem ffiStep680 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis680) : LabToTarget.findFfiNames (Filtered680 :: rest) = suffixFfis680 := by
  rw [findFfiNames_section, localFfis680_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep680
end InitE.BackendStages.Metadata
