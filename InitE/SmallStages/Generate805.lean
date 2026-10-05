import Tools.GenSmallStages
import InitE.SmallStages.Oracles805
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 805 InitE.WordStages.source805.2.1 InitE.WordStages.source805.2.2 InitE.SmallStages.Oracles805.oracle805
