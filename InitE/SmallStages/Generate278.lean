import Tools.GenSmallStages
import InitE.SmallStages.Oracles278
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 278 InitE.WordStages.source278.2.1 InitE.WordStages.source278.2.2 InitE.SmallStages.Oracles278.oracle278
