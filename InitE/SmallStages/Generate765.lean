import Tools.GenSmallStages
import InitE.SmallStages.Oracles765
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 765 InitE.WordStages.source765.2.1 InitE.WordStages.source765.2.2 InitE.SmallStages.Oracles765.oracle765
