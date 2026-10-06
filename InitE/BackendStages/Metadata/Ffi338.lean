import InitE.BackendStages.Metadata.Data338
import InitE.BackendStages.Filtered338
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis338_eq : ffiLines Filtered338.lines = localFfis338 := by
  with_unfolding_all rfl
theorem ffiStep338 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis338) : LabToTarget.findFfiNames (Filtered338 :: rest) = suffixFfis338 := by
  rw [findFfiNames_section, localFfis338_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep338
end InitE.BackendStages.Metadata
