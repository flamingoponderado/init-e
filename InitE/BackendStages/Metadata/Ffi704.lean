import InitE.BackendStages.Metadata.Data704
import InitE.BackendStages.Filtered704
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis704_eq : ffiLines Filtered704.lines = localFfis704 := by
  with_unfolding_all rfl
theorem ffiStep704 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis704) : LabToTarget.findFfiNames (Filtered704 :: rest) = suffixFfis704 := by
  rw [findFfiNames_section, localFfis704_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep704
end InitE.BackendStages.Metadata
