import InitE.SourceDeclarationsCore
import InitE.MetadataComputation
import InitE.NameComputation
import InitE.CompilerComputation
import Guest.Ast
import Flapjack.Pancake.Proofs.PanToTarget
import Flapjack.RiscV.NativeSource
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput

open scoped InitE.CompilerComputation

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

/-! Static facts about the fixed source. Computation proofs use proof-producing `decide_cbv` and are checked by the kernel.
The executable stack analyzer is linked to the logical compiler by kernel equalities. -/
namespace InitE
open Flapjack Flapjack.Pancake.PanLang Flapjack.Compiler.Backend
open Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Basis.Pure.MlString


end InitE
